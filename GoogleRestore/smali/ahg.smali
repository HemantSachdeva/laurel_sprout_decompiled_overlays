.class public final Lahg;
.super Lacu;
.source "PG"

# interfaces
.implements Lahh;


# instance fields
.field final synthetic a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const-string v0, "com.google.android.apps.pixelmigrate.cloudrestore.service.IBoundCloudRestoreService"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;)V
    .locals 0

    iput-object p1, p0, Lahg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 1
    const-string p1, "com.google.android.apps.pixelmigrate.cloudrestore.service.IBoundCloudRestoreService"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;)V
    .locals 12

    .line 2
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    sget-object v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "IBoundCloudRestoreService.startContactsRestore() was called."

    invoke-virtual {v2, v5, v4}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    array-length v2, v7

    if-nez v2, :cond_0

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    new-array v2, v3, [Ljava/lang/Object;

    .line 4
    const-string v3, "No device/SIM contacts to restore"

    invoke-virtual {v1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    invoke-static {v8, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a(Lahk;Z)V

    return-void

    :cond_0
    iget-object v2, v0, Lahg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 6
    iget-object v2, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->c:Lacy;

    .line 7
    sget-object v4, Laxj;->c:Laxj;

    sget-object v5, Laxl;->c:Laxl;

    invoke-virtual {v2, v4, v5}, Lacy;->a(Laxj;Laxl;)V

    iget-object v2, v0, Lahg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 8
    iget-object v2, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->b:Lbmy;

    .line 9
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 10
    move-object v5, p2

    move-object v6, p3

    invoke-virtual {v2, v4, p2, p3, v7}, Lbmy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbpi;

    move-result-object v10

    new-instance v2, Lael;

    iget-object v4, v0, Lahg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 11
    invoke-direct {v2, v4, v8, v3}, Lael;-><init>(Landroid/content/Context;Lahk;I)V

    .line 12
    invoke-virtual {v10, v2}, Lbpi;->a(Lbpd;)V

    new-instance v11, Laek;

    iget-object v2, v0, Lahg;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 13
    iget-object v3, v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->b:Lbmy;

    .line 14
    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    .line 15
    move-object v1, v11

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Laek;-><init>(Landroid/content/Context;Lbmy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;I)V

    .line 16
    invoke-virtual {v10, v11}, Lbpi;->a(Lbpa;)V

    return-void
.end method

.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 18
    sget-object p1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/accounts/Account;

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v5, p1

    goto :goto_0

    .line 27
    :cond_0
    nop

    .line 23
    const-string p2, "com.google.android.apps.pixelmigrate.cloudrestore.service.IContactsRestoreCallbacks"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 24
    instance-of v0, p2, Lahk;

    if-eqz v0, :cond_1

    .line 25
    check-cast p2, Lahk;

    move-object v5, p2

    goto :goto_0

    :cond_1
    new-instance p2, Lahi;

    .line 26
    invoke-direct {p2, p1}, Lahi;-><init>(Landroid/os/IBinder;)V

    move-object v5, p2

    .line 27
    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lahg;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;)V

    return p3

    .line 26
    :cond_2
    const/4 p1, 0x0

    return p1
.end method
