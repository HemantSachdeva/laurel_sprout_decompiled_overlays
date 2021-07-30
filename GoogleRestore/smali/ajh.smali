.class public abstract Lajh;
.super Lalv;
.source "PG"


# instance fields
.field public a:Lajg;

.field b:Ladc;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lalv;-><init>()V

    return-void
.end method

.method public static a(Ladc;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v1, "lock_screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    const-string p0, "device_name"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lalv;->a(Landroid/content/Context;)V

    .line 10
    check-cast p1, Lajg;

    iput-object p1, p0, Lajh;->a:Lajg;

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-super {p0, p1}, Lalv;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 12
    const-string v0, "device_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lajh;->c:Ljava/lang/String;

    iget-object p1, p0, Lba;->k:Landroid/os/Bundle;

    .line 13
    const-string v0, "lock_screen_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ladc;

    iput-object p1, p0, Lajh;->b:Ladc;

    return-void
.end method

.method public abstract a(Lauu;)V
.end method

.method final b(Lauu;)Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lauu;->c:Lauu;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lajh;->b:Ladc;

    iget p1, p1, Ladc;->e:I

    .line 6
    invoke-virtual {p0, p1}, Lba;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f110103

    .line 7
    invoke-virtual {p0, p1}, Lba;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    return-object p1
.end method

.method final e()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lajh;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 8
    const v1, 0x7f110102

    invoke-virtual {p0, v1, v0}, Lba;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 14
    invoke-super {p0}, Lalv;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lajh;->a:Lajg;

    return-void
.end method
