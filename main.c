#include <memory.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdbool.h>

const int MAX_DEFAULT_TRAN = 5;
const int MAX_USERS = 3;

struct Transaction{
    int from;
    int to;
    int amount;
};

struct TransactionMatrix{
    int map[MAX_USERS][MAX_USERS];
    int index;
};

struct Book{
    struct Transaction transaction[MAX_DEFAULT_TRAN];
    int index;
};

struct User{
    int id;
    char name[30];
    int amount;
};

struct User globalUsers[MAX_USERS];
struct Book expenses;
struct TransactionMatrix report;
int primaryId = 0;

void initRRRR()
{
    time_t t;
    srand((unsigned) time(&t));
}

struct User newUser(char* name,int amount)
{
    struct User user;
    strcpy(user.name,name);
    user.id = primaryId++;
    user.amount = amount;
    return user;
}

int len(int ar[])
{
    return sizeof(ar)/ sizeof(int);
}

int max(int ar[])
{
    int max = -1;
    for(int i = 0; i <len(ar) ;i++ )
    {
        if(max < ar[i])
            max = ar[i];
    }
    return max;
}

void transact(struct Book *b, int from,int to,int amount)
{
    struct Transaction *t = b->transaction;
    int index = b->index++;
    t[index].from = from;
    t[index].to = to;
    t[index].amount = amount;
}
void updateReport(int from,int to,int amount)
{
    report.map[from][to] += amount;
    int ar[] = {report.index,from,to};
    report.index = max(ar);
}

int buildUsersAndLoadEmUp()
{
    globalUsers[0] = newUser("Srikanth",500);
    globalUsers[1] = newUser("bannu",400);
    globalUsers[2] = newUser("Papa",7000);
    return 1;
}

void buildSampleTransactions()
{
    int from,to,amount;
    for(int i = 0 ; i< MAX_DEFAULT_TRAN; i++ )
    {
        from = rand()% MAX_USERS;
        to = rand() % MAX_USERS;

        if(from == to)
            continue;

        amount = rand() % 100;

        transact(&expenses,from,to,amount);
        updateReport(from,to,amount);
    }
}

void printAllUsers()
{
    for(int i=0;i< primaryId ;i++)
    {
        printf("%d : %s\n",globalUsers[i].id, globalUsers[i].name);
    }
}

void printAllTransactions(struct Book *book)
{
    struct Transaction *t = book->transaction;
    int index = book->index;

    printf("TRANSACTIONS\n");

    for(int i = 0 ; i < index ; i++)
    {
        printf("%d -> %d [%d]\n",t->from,t->to, t->amount);
        t++;
    }
}
void printReport()
{
    printf("TRANSACTIONS\n");
    for(int i = 0;i < MAX_USERS ; i++)
    {
        for(int j = 0; j < MAX_USERS; j++)
        {
            if(report.map[i][j] == 0)
                continue;
            printf("%d -> %d [%d]\n",i,j,report.map[i][j]);
        }
    }
}
void normalizeReport()
{
    for(int i = 0;i < MAX_USERS ; i++)
    {
        for(int j = 0; j < MAX_USERS; j++)
        {
            if(report.map[i][j] == 0)
                continue;

            if(report.map[i][j] > report.map[j][i])
            {
                report.map[i][j] = report.map[i][j] - report.map[j][i];
                report.map[j][i] = 0;
            }
        }
    }
}

int main() {
    initRRRR();
    buildUsersAndLoadEmUp();
    printAllUsers();
    buildSampleTransactions();
    printAllTransactions(&expenses);
    printReport();
    normalizeReport();
    printReport();
}