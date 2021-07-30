.class final Lcil;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfu;


# instance fields
.field final synthetic a:Lciw;


# direct methods
.method public constructor <init>(Lciw;)V
    .locals 0

    iput-object p1, p0, Lcil;->a:Lciw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgu;)Lgu;
    .locals 1

    iget-object p1, p0, Lcil;->a:Lciw;

    .line 1
    invoke-virtual {p2}, Lgu;->d()I

    move-result v0

    iput v0, p1, Lciw;->g:I

    iget-object p1, p0, Lcil;->a:Lciw;

    .line 2
    invoke-virtual {p2}, Lgu;->a()I

    move-result v0

    iput v0, p1, Lciw;->h:I

    iget-object p1, p0, Lcil;->a:Lciw;

    .line 3
    invoke-virtual {p2}, Lgu;->c()I

    move-result v0

    iput v0, p1, Lciw;->i:I

    iget-object p1, p0, Lcil;->a:Lciw;

    .line 4
    invoke-virtual {p1}, Lciw;->a()V

    return-object p2
.end method
