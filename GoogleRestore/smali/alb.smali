.class public final Lalb;
.super Lakv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lakv;-><init>()V

    return-void
.end method

.method private final Q()Z
    .locals 3

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 3
    const-string v1, "is_deferred"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final P()Lala;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 2
    check-cast v0, Lala;

    return-object v0
.end method

.method public final k()Landroid/app/Dialog;
    .locals 4

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0}, Lakv;->O()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 5
    const-string v2, "is_cloud_restore"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const v0, 0x7f11018f

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-direct {p0}, Lalb;->Q()Z

    move-result v0

    if-eq v3, v0, :cond_0

    const v0, 0x7f11018e

    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f11018d

    .line 8
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lakw;

    .line 9
    invoke-direct {v0, p0}, Lakw;-><init>(Lalb;)V

    const v2, 0x7f11002f

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 19
    :cond_1
    nop

    .line 10
    const-string v2, "is_transferring"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f11018c

    .line 11
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f110189

    .line 12
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lakx;

    .line 13
    invoke-direct {v0, p0}, Lakx;-><init>(Lalb;)V

    const v2, 0x7f11018a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_2
    const v2, 0x7f11018b

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-direct {p0}, Lalb;->Q()Z

    move-result v2

    if-eq v3, v2, :cond_3

    const v2, 0x7f110188

    goto :goto_1

    .line 17
    :cond_3
    const v2, 0x7f110187

    .line 16
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Laky;

    .line 17
    invoke-direct {v2, p0, v0}, Laky;-><init>(Lalb;Landroid/os/Bundle;)V

    const v0, 0x7f11002e

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    :goto_2
    const v0, 0x7f110186

    sget-object v2, Lakz;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
