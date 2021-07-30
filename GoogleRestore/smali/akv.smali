.class public Lakv;
.super Lav;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lav;-><init>()V

    return-void
.end method


# virtual methods
.method protected final O()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12024d

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final a(Lbx;Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string p2, "DIALOG"

    invoke-virtual {p1, p2}, Lbx;->a(Ljava/lang/String;)Lba;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2}, Lav;->a(Lbx;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
