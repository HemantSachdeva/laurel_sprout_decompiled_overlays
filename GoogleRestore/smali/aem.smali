.class public final Laem;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field private final a:Lacy;


# direct methods
.method public constructor <init>(Lacy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laem;->a:Lacy;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Successfully switched to GMS transport (or was already) at start of cloud restore."

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to switch to GMS transport at start of cloud restore."

    invoke-virtual {v0, v3, p1, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Laem;->a:Lacy;

    .line 2
    sget-object v0, Lawr;->b:Lawr;

    .line 3
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v2

    .line 4
    sget-object v3, Laws;->c:Laws;

    .line 5
    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v1, v3, Ldjy;->b:Z

    :cond_0
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 7
    check-cast v4, Laws;

    iget v0, v0, Lawr;->c:I

    iput v0, v4, Laws;->b:I

    iget v0, v4, Laws;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v4, Laws;->a:I

    iget-boolean v0, v2, Ldjy;->b:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v1, v2, Ldjy;->b:Z

    :cond_1
    iget-object v0, v2, Ldjy;->a:Ldkd;

    .line 9
    check-cast v0, Lavi;

    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Laws;

    sget-object v3, Lavi;->q:Lavi;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lavi;->l:Laws;

    iget v1, v0, Lavi;->a:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v0, Lavi;->a:I

    .line 11
    sget-object v0, Lavh;->z:Lavh;

    invoke-virtual {p1, v2, v0}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method
