.class public final Laka;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Laqd;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/content/Context;

.field public final e:J

.field public f:J

.field public final g:Lapm;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ldjy;

.field public final j:Ldjy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MigrateLogger"

    aput-object v3, v1, v2

    .line 27
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laka;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbby;)V
    .locals 3

    .line 1
    sget v0, Lbqe;->a:I

    new-instance v0, Lapm;

    .line 2
    const-string v1, "ANDROID_MIGRATE"

    invoke-direct {v0, p1, v1}, Lapm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Ldsg;->d:Ldsg;

    iget-object v2, v0, Lapm;->a:Lbdh;

    if-nez v1, :cond_0

    sget-object v1, Ldsg;->a:Ldsg;

    :cond_0
    iput-object v1, v2, Lbdh;->g:Ldsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laka;->g:Lapm;

    iput-object p1, p0, Laka;->d:Landroid/content/Context;

    .line 3
    sget-object p1, Lbao;->h:Lbao;

    .line 4
    invoke-virtual {p1}, Ldkd;->g()Ldjy;

    move-result-object p1

    iput-object p1, p0, Laka;->i:Ldjy;

    iget-boolean v0, p1, Ldjy;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v1, p1, Ldjy;->b:Z

    :cond_1
    iget-object p1, p1, Ldjy;->a:Ldkd;

    .line 6
    check-cast p1, Lbao;

    iget v0, p1, Lbao;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lbao;->a:I

    const/16 v0, -0xa

    iput v0, p1, Lbao;->b:I

    .line 7
    sget-object p1, Lbbz;->h:Lbbz;

    .line 8
    invoke-virtual {p1}, Ldkd;->g()Ldjy;

    move-result-object p1

    iput-object p1, p0, Laka;->j:Ldjy;

    .line 9
    sget-object v0, Lbbi;->a:Lbbi;

    iget-boolean v2, p1, Ldjy;->b:Z

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v1, p1, Ldjy;->b:Z

    :cond_2
    iget-object v2, p1, Ldjy;->a:Ldkd;

    .line 11
    check-cast v2, Lbbz;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v2, Lbbz;->f:Lbbi;

    iget v0, v2, Lbbz;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lbbz;->a:I

    iget-boolean v0, p1, Ldjy;->b:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v1, p1, Ldjy;->b:Z

    :cond_3
    iget-object v0, p1, Ldjy;->a:Ldkd;

    .line 14
    check-cast v0, Lbbz;

    iget p2, p2, Lbby;->s:I

    iput p2, v0, Lbbz;->b:I

    iget p2, v0, Lbbz;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lbbz;->a:I

    .line 15
    invoke-virtual {p0}, Laka;->a()I

    move-result p2

    iget-boolean v0, p1, Ldjy;->b:Z

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v1, p1, Ldjy;->b:Z

    :cond_4
    iget-object p1, p1, Ldjy;->a:Ldkd;

    .line 17
    check-cast p1, Lbbz;

    iget v0, p1, Lbbz;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lbbz;->a:I

    iput p2, p1, Lbbz;->d:I

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Laka;->e:J

    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laka;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laka;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laka;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Laka;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    .line 28
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 31
    const-string v3, "scale"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v2, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v0

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final a(Lbas;I)V
    .locals 2

    .line 22
    sget-object v0, Lbat;->d:Lbat;

    .line 23
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_0
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 25
    check-cast v1, Lbat;

    iget p1, p1, Lbas;->d:I

    iput p1, v1, Lbat;->c:I

    iget p1, v1, Lbat;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v1, Lbat;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v1, Lbat;->a:I

    iput p2, v1, Lbat;->b:I

    .line 22
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lbat;

    iget-object p2, p0, Laka;->h:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
