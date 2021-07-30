.class public final Lalp;
.super Lalv;
.source "PG"

# interfaces
.implements Lcmw;


# static fields
.field public static final synthetic c:I

.field private static final d:Lacw;


# instance fields
.field private Z:Lajy;

.field public a:Lcmy;

.field final b:Laln;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RestoreFlowChoiceFragment"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lalp;->d:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lalv;-><init>()V

    new-instance v0, Laln;

    .line 3
    invoke-direct {v0, p0}, Laln;-><init>(Lalp;)V

    iput-object v0, p0, Lalp;->b:Laln;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "new"

    new-instance v0, Lall;

    .line 6
    invoke-direct {v0, v1}, Lall;-><init>(Lalp;)V

    .line 7
    sget-object v3, Land;->U:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lalm;

    .line 8
    invoke-direct {v0, v1}, Lalm;-><init>(Lalp;)V

    const v3, 0x7f0d00da

    const v4, 0x7f110158

    const v5, 0x7f110150

    goto :goto_0

    .line 25
    :cond_0
    const v3, 0x7f0d00d9

    const v4, 0x7f110161

    const v5, 0x7f11002e

    .line 8
    :goto_0
    nop

    .line 9
    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v3, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 10
    invoke-virtual {v1, v3, v4}, Lalv;->a(Lcom/google/android/setupdesign/GlifLayout;I)V

    const-class v4, Lcly;

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Ljava/lang/Class;)Lcmb;

    move-result-object v4

    check-cast v4, Lcly;

    new-instance v7, Lclz;

    invoke-virtual/range {p0 .. p0}, Lba;->p()Landroid/content/Context;

    move-result-object v8

    .line 12
    invoke-direct {v7, v8}, Lclz;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v7, v5}, Lclz;->a(I)V

    iput-object v0, v7, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x7

    iput v0, v7, Lclz;->c:I

    const v0, 0x7f1201a5

    iput v0, v7, Lclz;->d:I

    .line 14
    invoke-virtual {v7}, Lclz;->a()Lcma;

    move-result-object v0

    .line 15
    invoke-virtual {v4, v0}, Lcly;->b(Lcma;)V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->d()Lqc;

    move-result-object v0

    check-cast v0, Lcmy;

    iput-object v0, v1, Lalp;->a:Lcmy;

    iput-object v1, v0, Lcmy;->e:Lcmw;

    iget-object v0, v1, Lalp;->b:Laln;

    iget-object v0, v0, Laln;->a:Lalp;

    invoke-virtual {v0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lajy;->a(Landroid/content/Context;)Lajy;

    move-result-object v0

    iput-object v0, v1, Lalp;->Z:Lajy;

    invoke-virtual/range {p0 .. p0}, Lba;->v()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 61
    :cond_1
    iget-object v0, v1, Lalp;->a:Lcmy;

    const v4, 0x7f0a012d

    .line 18
    invoke-virtual {v0, v4}, Lcmy;->e(I)Lcms;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/setupdesign/items/Item;

    iget-object v0, v1, Lalp;->a:Lcmy;

    const v5, 0x7f0a0133

    .line 19
    invoke-virtual {v0, v5}, Lcmy;->e(I)Lcms;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/setupdesign/items/Item;

    iget-object v0, v1, Lalp;->b:Laln;

    iget-object v0, v0, Laln;->a:Lalp;

    invoke-virtual {v0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 20
    sget-object v7, Laqn;->a:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 22
    invoke-static {v0}, Laqn;->a(Landroid/content/Context;)J

    move-result-wide v8

    const-string v0, "usb_migration_state"

    .line 23
    invoke-static {v0}, Laqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, -0x1

    .line 24
    invoke-static {v7, v10, v11, v12}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v8

    if-eqz v12, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 34
    :cond_2
    nop

    .line 25
    invoke-static {v7, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 24
    :goto_1
    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    const/4 v8, 0x4

    if-eq v0, v8, :cond_3

    const/4 v8, 0x5

    if-eq v0, v8, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 34
    :cond_3
    const/4 v0, 0x1

    .line 24
    :goto_2
    xor-int/2addr v0, v7

    iget-object v8, v1, Lalp;->b:Laln;

    iget-object v8, v8, Laln;->a:Lalp;

    invoke-virtual {v8}, Lba;->p()Landroid/content/Context;

    move-result-object v8

    .line 26
    invoke-static {v8}, Laok;->b(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v0, :cond_5

    .line 50
    const-string v0, "ro.setupwizard.suppress_d2d_deprecated"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lapx;

    invoke-virtual/range {p0 .. p0}, Lba;->p()Landroid/content/Context;

    move-result-object v2

    .line 51
    invoke-direct {v0, v2}, Lapx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lapx;->b()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    const/4 v7, 0x0

    .line 52
    :goto_3
    invoke-virtual {v4, v7}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    goto/16 :goto_8

    .line 57
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 26
    :cond_6
    move v8, v0

    .line 57
    :goto_4
    iget-object v0, v1, Lalp;->Z:Lajy;

    :try_start_0
    iget-object v0, v0, Lajy;->b:Lajx;

    const-string v9, "Multiple values found for key=setup_mode"

    iget-object v0, v0, Lajx;->a:Landroid/content/Context;

    .line 27
    sget-object v10, Lcnz;->a:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 29
    invoke-static {}, Lcnz;->a()Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lcnz;->a:[Ljava/lang/String;

    new-array v15, v7, [Ljava/lang/String;

    const-string v0, "java.lang.String"

    aput-object v0, v15, v6

    const-string v14, "type=?"

    const/16 v16, 0x0

    .line 30
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    .line 31
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ne v11, v7, :cond_8

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v10, v0

    goto :goto_5

    :cond_8
    if-nez v11, :cond_9

    .line 33
    invoke-static {v0}, Lcnz;->a(Landroid/database/Cursor;)V

    goto :goto_5

    :cond_9
    const-string v0, "DeviceOrigin"

    .line 34
    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :goto_5
    if-eqz v10, :cond_a

    .line 35
    :try_start_2
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    invoke-static {v10}, Lcnz;->a(Landroid/database/Cursor;)V

    goto :goto_7

    .line 37
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 49
    :cond_a
    move-object v0, v2

    goto :goto_7

    .line 38
    :catchall_1
    move-exception v0

    .line 36
    :goto_6
    invoke-static {v10}, Lcnz;->a(Landroid/database/Cursor;)V

    .line 37
    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    :catch_0
    move-exception v0

    sget-object v7, Lajy;->a:Lacw;

    new-array v9, v6, [Ljava/lang/Object;

    .line 38
    const-string v10, "Couldn\'t read setup mode from DeviceOrigin."

    invoke-virtual {v7, v10, v0, v9}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 36
    :goto_7
    nop

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 40
    const-string v2, "carbon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 41
    nop

    .line 42
    const-string v2, "d2d_android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    .line 43
    const-string v2, "ios"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    sget-object v2, Land;->U:Lccv;

    .line 44
    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lalp;->a:Lcmy;

    const v7, 0x7f0a0132

    .line 45
    invoke-virtual {v2, v7}, Lcmy;->e(I)Lcms;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/items/Item;

    .line 46
    const-string v7, "cloud"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    .line 47
    invoke-virtual {v2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    goto :goto_8

    .line 40
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v2, "USB flow started but user reached RestoreChoiceActivity"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_c
    if-eqz v8, :cond_d

    .line 48
    invoke-virtual {v4, v6}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    goto :goto_8

    :cond_d
    sget-object v0, Lalp;->d:Lacw;

    new-array v2, v6, [Ljava/lang/Object;

    .line 49
    const-string v7, "Cannot start restore but no previous restore flows were chosen"

    invoke-virtual {v0, v7, v2}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_e
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/ActivityManager;

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_f

    .line 54
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-virtual {v5, v6}, Lcom/google/android/setupdesign/items/Item;->b(Z)V

    .line 56
    :cond_f
    invoke-virtual {v4}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    .line 57
    invoke-virtual {v5}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->d()V

    .line 17
    :goto_9
    iget-object v0, v1, Lalp;->a:Lcmy;

    iget-object v0, v0, Lcmy;->c:Lcms;

    const v2, 0x7f0a012f

    .line 58
    invoke-interface {v0, v2}, Lcms;->b(I)Lcms;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/DescriptionItem;

    if-eqz v0, :cond_10

    iget-boolean v2, v3, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/android/setupdesign/items/DescriptionItem;->a(Z)V

    .line 60
    :cond_10
    invoke-virtual {v3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->c()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 61
    new-instance v2, Lalo;

    invoke-direct {v2, v1, v0}, Lalo;-><init>(Lalp;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Lrb;)V

    return-object v3
.end method

.method public final a(Lcmo;)V
    .locals 2

    .line 62
    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    iget p1, p1, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    .line 63
    invoke-virtual {p0}, Lalp;->e()Lamp;

    move-result-object v0

    const v1, 0x7f0a012d

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lalp;->Z:Lajy;

    .line 64
    const-string v1, "d2d_android"

    invoke-virtual {p1, v1}, Lajy;->a(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lamn;->g:Lamn;

    invoke-interface {v0, p1}, Lamp;->a(Lamn;)V

    return-void

    :cond_0
    const v1, 0x7f0a0133

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lalp;->Z:Lajy;

    .line 66
    const-string v1, "ios"

    invoke-virtual {p1, v1}, Lajy;->a(Ljava/lang/String;)V

    .line 67
    sget-object p1, Lamn;->h:Lamn;

    invoke-interface {v0, p1}, Lamp;->a(Lamn;)V

    return-void

    :cond_1
    const v1, 0x7f0a0132

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lalp;->Z:Lajy;

    .line 68
    const-string v1, "cloud"

    invoke-virtual {p1, v1}, Lajy;->a(Ljava/lang/String;)V

    .line 69
    sget-object p1, Lamn;->i:Lamn;

    invoke-interface {v0, p1}, Lamp;->a(Lamn;)V

    :cond_2
    return-void
.end method

.method public final d()Lbcs;
    .locals 1

    .line 4
    sget-object v0, Lbcs;->I:Lbcs;

    return-object v0
.end method

.method public final e()Lamp;
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    .line 5
    check-cast v0, Lamp;

    return-object v0
.end method
