.class public final Lrc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Lrc;

.field private static final g:Ltn;


# instance fields
.field private c:Ljava/util/WeakHashMap;

.field private final d:Ljava/util/WeakHashMap;

.field private e:Landroid/util/TypedValue;

.field private f:Z

.field private h:Lmp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lrc;->a:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ltn;

    .line 2
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ltn;-><init>(I)V

    sput-object v0, Lrc;->g:Ltn;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lrc;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Lrc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrc;->g:Ltn;

    .line 73
    invoke-static {p0, p1}, Ltn;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 74
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    invoke-static {p0, p1}, Ltn;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ltn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    .line 72
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrc;->d:Ljava/util/WeakHashMap;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ltm;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v2, :cond_1

    iget-object p1, v0, Ltm;->c:[J

    iget v2, v0, Ltm;->e:I

    .line 14
    invoke-static {p1, v2, p2, p3}, Ltk;->a([JIJ)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, v0, Ltm;->d:[Ljava/lang/Object;

    .line 15
    aget-object p2, p2, p1

    sget-object p3, Ltm;->a:Ljava/lang/Object;

    if-eq p2, p3, :cond_2

    iget-object p2, v0, Ltm;->d:[Ljava/lang/Object;

    sget-object p3, Ltm;->a:Ljava/lang/Object;

    .line 16
    aput-object p3, p2, p1

    const/4 p1, 0x1

    iput-boolean p1, v0, Ltm;->b:Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 16
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 10
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized a()Lrc;
    .locals 2

    const-class v0, Lrc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrc;->b:Lrc;

    if-nez v1, :cond_0

    new-instance v1, Lrc;

    .line 9
    invoke-direct {v1}, Lrc;-><init>()V

    sput-object v1, Lrc;->b:Lrc;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    sget-object v1, Lrc;->b:Lrc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lrc;->d:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltm;

    if-nez v0, :cond_0

    new-instance v0, Ltm;

    .line 6
    invoke-direct {v0}, Ltm;-><init>()V

    iget-object v1, p0, Lrc;->d:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    nop

    .line 7
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Ltm;->a(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static a(Landroid/graphics/drawable/Drawable;Lrl;[I)V
    .locals 3

    .line 119
    invoke-static {p0}, Loh;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    return-void

    .line 121
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lrl;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lrl;->c:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    .line 122
    :cond_3
    iget-object v0, p1, Lrl;->a:Landroid/content/res/ColorStateList;

    .line 123
    :goto_1
    iget-boolean v2, p1, Lrl;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 125
    :cond_4
    sget-object p1, Lrc;->a:Landroid/graphics/PorterDuff$Mode;

    .line 123
    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 125
    invoke-static {p2, p1}, Lrc;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_3

    :cond_6
    nop

    .line 126
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    :goto_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lrc;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrc;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iput-boolean v2, p0, Lrc;->f:Z

    const v0, 0x7f0801d2

    .line 19
    invoke-virtual {p0, p1, v0}, Lrc;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 20
    instance-of v3, v0, Lzx;

    if-nez v3, :cond_1

    .line 22
    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 0
    :cond_1
    :goto_0
    iget-object v0, p0, Lrc;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    .line 23
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lrc;->e:Landroid/util/TypedValue;

    :cond_2
    iget-object v0, p0, Lrc;->e:Landroid/util/TypedValue;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 25
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, v0, Landroid/util/TypedValue;->data:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    .line 26
    invoke-direct {p0, p1, v3, v4}, Lrc;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    iget-object v5, p0, Lrc;->h:Lmp;

    const v7, 0x7f08018d

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_1

    .line 30
    :cond_4
    if-ne p2, v7, :cond_5

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const v8, 0x7f08018c

    .line 27
    invoke-virtual {p0, p1, v8}, Lrc;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v5, v1

    const v8, 0x7f08018e

    .line 28
    invoke-virtual {p0, p1, v8}, Lrc;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-direct {p2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v5, p2

    const p2, 0x7f08018d

    goto :goto_1

    :cond_5
    move-object v5, v6

    .line 55
    :goto_1
    if-eqz v5, :cond_6

    .line 29
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 30
    invoke-direct {p0, p1, v3, v4, v5}, Lrc;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_6
    :goto_2
    if-nez v5, :cond_7

    .line 31
    invoke-static {p1, p2}, Ltt;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_7
    if-eqz v5, :cond_18

    .line 32
    invoke-virtual {p0, p1, p2}, Lrc;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 33
    invoke-static {v5}, Loh;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    .line 37
    :cond_8
    nop

    .line 35
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    invoke-static {v5, v0}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lrc;->h:Lmp;

    if-nez p1, :cond_9

    goto :goto_4

    .line 72
    :cond_9
    const p1, 0x7f0801c2

    if-ne p2, p1, :cond_a

    .line 37
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_a
    nop

    .line 36
    :goto_4
    if-eqz v6, :cond_b

    .line 38
    invoke-static {v5, v6}, Ley;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7

    .line 72
    :cond_b
    goto/16 :goto_7

    .line 37
    :cond_c
    iget-object v0, p0, Lrc;->h:Lmp;

    const v3, 0x7f0400a7

    const v4, 0x7f0400a9

    if-eqz v0, :cond_f

    const v7, 0x7f0801bf

    const v8, 0x102000d

    const v9, 0x102000f

    const/high16 v10, 0x1020000

    if-ne p2, v7, :cond_d

    .line 39
    move-object p2, v5

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 40
    invoke-virtual {p2, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 41
    invoke-static {p1, v4}, Lri;->a(Landroid/content/Context;I)I

    move-result v0

    .line 42
    sget-object v1, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 43
    invoke-static {p3, v0, v1}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 44
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 45
    invoke-static {p1, v4}, Lri;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 46
    invoke-static {p3, v0, v1}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    invoke-virtual {p2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 48
    invoke-static {p1, v3}, Lri;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 49
    invoke-static {p2, p1, p3}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7

    :cond_d
    const v7, 0x7f0801b6

    if-eq p2, v7, :cond_e

    const v7, 0x7f0801b5

    if-eq p2, v7, :cond_e

    const v7, 0x7f0801b7

    if-ne p2, v7, :cond_f

    .line 61
    :cond_e
    move-object p2, v5

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    .line 62
    invoke-virtual {p2, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 63
    invoke-static {p1, v4}, Lri;->c(Landroid/content/Context;I)I

    move-result v0

    .line 64
    sget-object v1, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 65
    invoke-static {p3, v0, v1}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    invoke-virtual {p2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 67
    invoke-static {p1, v3}, Lri;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 68
    invoke-static {p3, v0, v1}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    invoke-virtual {p2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 70
    invoke-static {p1, v3}, Lri;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    .line 71
    invoke-static {p2, p1, p3}, Lmp;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7

    :cond_f
    if-eqz v0, :cond_17

    .line 50
    sget-object v7, Lmq;->a:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v0, Lmp;->a:[I

    .line 51
    invoke-static {v8, p2}, Lmp;->a([II)Z

    move-result v8

    const v9, 0x1010031

    const/4 v10, -0x1

    if-eqz v8, :cond_10

    const/4 p2, -0x1

    const/4 v1, 0x1

    const v9, 0x7f0400a9

    goto :goto_5

    .line 60
    :cond_10
    iget-object v4, v0, Lmp;->c:[I

    .line 52
    invoke-static {v4, p2}, Lmp;->a([II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p2, -0x1

    const/4 v1, 0x1

    const v9, 0x7f0400a7

    goto :goto_5

    :cond_11
    iget-object v0, v0, Lmp;->d:[I

    .line 53
    invoke-static {v0, p2}, Lmp;->a([II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 54
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, -0x1

    const/4 v1, 0x1

    goto :goto_5

    :cond_12
    const v0, 0x7f0801a8

    if-ne p2, v0, :cond_13

    const p2, 0x42233333    # 40.8f

    .line 55
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v1, 0x1010030

    const/4 v1, 0x1

    const v9, 0x1010030

    goto :goto_5

    :cond_13
    const v0, 0x7f080190

    if-ne p2, v0, :cond_14

    const/4 p2, -0x1

    const/4 v1, 0x1

    goto :goto_5

    :cond_14
    const/4 p2, -0x1

    const/4 v9, 0x0

    .line 51
    :goto_5
    if-eqz v1, :cond_17

    .line 56
    invoke-static {v5}, Loh;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 57
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_6

    .line 60
    :cond_15
    move-object p3, v5

    .line 58
    :goto_6
    invoke-static {p1, v9}, Lri;->a(Landroid/content/Context;I)I

    move-result p1

    .line 59
    invoke-static {p1, v7}, Lmq;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v10, :cond_16

    .line 60
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_16
    goto :goto_7

    .line 55
    :cond_17
    if-eqz p3, :cond_18

    goto :goto_8

    :cond_18
    nop

    .line 38
    :goto_7
    move-object v6, v5

    :goto_8
    if-eqz v6, :cond_19

    .line 72
    invoke-static {}, Loh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_19
    monitor-exit p0

    return-object v6

    .line 20
    :cond_1a
    :try_start_1
    iput-boolean v1, p0, Lrc;->f:Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrc;->d:Ljava/util/WeakHashMap;

    .line 117
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltm;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Ltm;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lmp;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lrc;->h:Lmp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrc;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltp;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p2}, Ltp;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 101
    :cond_0
    move-object v0, v1

    .line 77
    :goto_0
    if-nez v0, :cond_15

    iget-object v0, p0, Lrc;->h:Lmp;

    const v2, 0x7f0801bd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 115
    :cond_1
    const v5, 0x7f080191

    if-ne p2, v5, :cond_2

    const v0, 0x7f060015

    .line 78
    invoke-static {p1, v0}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    :cond_2
    const v5, 0x7f0801c3

    if-ne p2, v5, :cond_3

    const v0, 0x7f060018

    .line 79
    invoke-static {p1, v0}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    :cond_3
    const v5, 0x7f0801c2

    if-ne p2, v5, :cond_5

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 80
    const v2, 0x7f0400ca

    invoke-static {p1, v2}, Lri;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const v6, 0x7f0400a7

    const/4 v7, 0x2

    if-eqz v5, :cond_4

    .line 81
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v2, Lri;->a:[I

    aput-object v2, v1, v4

    .line 85
    invoke-virtual {v5, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v4

    sget-object v2, Lri;->d:[I

    aput-object v2, v1, v3

    .line 86
    invoke-static {p1, v6}, Lri;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v3

    sget-object v2, Lri;->e:[I

    aput-object v2, v1, v7

    .line 87
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v7

    goto :goto_1

    .line 88
    :cond_4
    sget-object v5, Lri;->a:[I

    aput-object v5, v1, v4

    .line 82
    invoke-static {p1, v2}, Lri;->c(Landroid/content/Context;I)I

    move-result v5

    aput v5, v0, v4

    sget-object v5, Lri;->d:[I

    aput-object v5, v1, v3

    .line 83
    invoke-static {p1, v6}, Lri;->a(Landroid/content/Context;I)I

    move-result v5

    aput v5, v0, v3

    sget-object v5, Lri;->e:[I

    aput-object v5, v1, v7

    .line 84
    invoke-static {p1, v2}, Lri;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v7

    .line 87
    :goto_1
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 88
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v2

    goto/16 :goto_3

    .line 84
    :cond_5
    const v5, 0x7f080185

    if-ne p2, v5, :cond_6

    const v0, 0x7f0400a6

    .line 89
    invoke-static {p1, v0}, Lri;->a(Landroid/content/Context;I)I

    move-result v0

    .line 90
    invoke-static {p1, v0}, Lmp;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    :cond_6
    const v5, 0x7f08017f

    if-ne p2, v5, :cond_7

    .line 91
    invoke-static {p1, v4}, Lmp;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_7
    const v5, 0x7f080184

    if-ne p2, v5, :cond_8

    const v0, 0x7f0400a4

    .line 92
    invoke-static {p1, v0}, Lri;->a(Landroid/content/Context;I)I

    move-result v0

    .line 93
    invoke-static {p1, v0}, Lmp;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_8
    const v5, 0x7f0801c0

    if-eq p2, v5, :cond_e

    const v5, 0x7f0801c1

    if-ne p2, v5, :cond_9

    goto :goto_2

    .line 94
    :cond_9
    iget-object v5, v0, Lmp;->b:[I

    .line 95
    invoke-static {v5, p2}, Lmp;->a([II)Z

    move-result v5

    if-eqz v5, :cond_a

    const v0, 0x7f0400a9

    .line 96
    invoke-static {p1, v0}, Lri;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_a
    iget-object v5, v0, Lmp;->e:[I

    .line 97
    invoke-static {v5, p2}, Lmp;->a([II)Z

    move-result v5

    if-eqz v5, :cond_b

    const v0, 0x7f060014

    .line 98
    invoke-static {p1, v0}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_b
    iget-object v0, v0, Lmp;->f:[I

    .line 99
    invoke-static {v0, p2}, Lmp;->a([II)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f060013

    .line 100
    invoke-static {p1, v0}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    :cond_c
    if-ne p2, v2, :cond_d

    const p2, 0x7f060016

    .line 101
    invoke-static {p1, p2}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const p2, 0x7f0801bd

    goto :goto_3

    :cond_d
    goto :goto_3

    .line 93
    :cond_e
    :goto_2
    const v0, 0x7f060017

    .line 94
    invoke-static {p1, v0}, Lji;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 77
    :goto_3
    if-eqz v1, :cond_14

    iget-object v0, p0, Lrc;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/WeakHashMap;

    .line 102
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lrc;->c:Ljava/util/WeakHashMap;

    :cond_f
    iget-object v0, p0, Lrc;->c:Ljava/util/WeakHashMap;

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltp;

    if-nez v0, :cond_10

    new-instance v0, Ltp;

    .line 104
    invoke-direct {v0}, Ltp;-><init>()V

    iget-object v2, p0, Lrc;->c:Ljava/util/WeakHashMap;

    .line 105
    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 115
    :cond_10
    nop

    .line 105
    :goto_4
    iget p1, v0, Ltp;->d:I

    if-eqz p1, :cond_11

    iget-object v2, v0, Ltp;->b:[I

    add-int/lit8 v5, p1, -0x1

    .line 106
    aget v2, v2, v5

    if-gt p2, v2, :cond_11

    .line 116
    invoke-virtual {v0, p2, v1}, Ltp;->a(ILjava/lang/Object;)V

    goto :goto_5

    :cond_11
    iget-boolean v2, v0, Ltp;->a:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Ltp;->b:[I

    .line 107
    array-length v2, v2

    if-lt p1, v2, :cond_12

    .line 108
    invoke-virtual {v0}, Ltp;->b()V

    :cond_12
    iget p1, v0, Ltp;->d:I

    iget-object v2, v0, Ltp;->b:[I

    .line 109
    array-length v2, v2

    if-lt p1, v2, :cond_13

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ltk;->a(I)I

    move-result v2

    .line 110
    new-array v5, v2, [I

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v0, Ltp;->b:[I

    .line 112
    array-length v7, v6

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Ltp;->c:[Ljava/lang/Object;

    .line 113
    array-length v7, v6

    invoke-static {v6, v4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Ltp;->b:[I

    iput-object v2, v0, Ltp;->c:[Ljava/lang/Object;

    :cond_13
    iget-object v2, v0, Ltp;->b:[I

    .line 114
    aput p2, v2, p1

    iget-object p2, v0, Ltp;->c:[Ljava/lang/Object;

    .line 115
    aput-object v1, p2, p1

    add-int/2addr p1, v3

    iput p1, v0, Ltp;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_5
    monitor-exit p0

    return-object v1

    .line 115
    :cond_14
    move-object v0, v1

    goto :goto_6

    .line 101
    :cond_15
    nop

    .line 115
    :goto_6
    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
