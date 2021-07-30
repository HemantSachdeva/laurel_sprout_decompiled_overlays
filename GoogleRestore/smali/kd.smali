.class Lkd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Landroid/content/Context;

.field public b:Lto;

.field public c:Lto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Leo;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Leo;

    iget-object v1, p0, Lkd;->b:Lto;

    if-nez v1, :cond_0

    new-instance v1, Lto;

    .line 3
    invoke-direct {v1}, Lto;-><init>()V

    iput-object v1, p0, Lkd;->b:Lto;

    :cond_0
    iget-object v1, p0, Lkd;->b:Lto;

    .line 4
    invoke-virtual {v1, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Lky;

    iget-object v1, p0, Lkd;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p1, v1, v0}, Lky;-><init>(Landroid/content/Context;Leo;)V

    iget-object v1, p0, Lkd;->b:Lto;

    .line 6
    invoke-virtual {v1, v0, p1}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 7
    instance-of v0, p1, Lep;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lep;

    iget-object v0, p0, Lkd;->c:Lto;

    if-nez v0, :cond_0

    new-instance v0, Lto;

    .line 9
    invoke-direct {v0}, Lto;-><init>()V

    iput-object v0, p0, Lkd;->c:Lto;

    :cond_0
    iget-object v0, p0, Lkd;->c:Lto;

    .line 10
    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Llm;

    iget-object v1, p0, Lkd;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Llm;-><init>(Landroid/content/Context;Lep;)V

    iget-object v1, p0, Lkd;->c:Lto;

    .line 12
    invoke-virtual {v1, p1, v0}, Lto;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
