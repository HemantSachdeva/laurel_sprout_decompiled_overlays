.class final Lti;
.super Ltl;
.source "PG"


# instance fields
.field final synthetic a:Ltj;


# direct methods
.method public constructor <init>(Ltj;)V
    .locals 0

    iput-object p1, p0, Lti;->a:Ltj;

    iget p1, p1, Ltj;->b:I

    .line 1
    invoke-direct {p0, p1}, Ltl;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lti;->a:Ltj;

    .line 2
    invoke-virtual {v0, p1}, Ltj;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final b(I)V
    .locals 1

    iget-object v0, p0, Lti;->a:Ltj;

    .line 3
    invoke-virtual {v0, p1}, Ltj;->b(I)V

    return-void
.end method
