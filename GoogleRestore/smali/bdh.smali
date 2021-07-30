.class public final Lbdh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbeo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:[Ljava/lang/String;

.field public static volatile c:I

.field public static final i:Ljava/util/List;

.field public static final l:Lbej;

.field public static final m:Lbqb;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ldsg;

.field public final h:Lbdf;

.field public final j:Ljava/util/List;

.field final k:Lbes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lbdh;->l:Lbej;

    new-instance v2, Lbdc;

    invoke-direct {v2}, Lbdc;-><init>()V

    sput-object v2, Lbdh;->m:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "ClearcutLogger.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Lbdh;->a:Lbeo;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lbdh;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lbdh;->c:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbdh;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lbes;

    sget-object v2, Lbdh;->a:Lbeo;

    new-instance v3, Lbuo;

    invoke-direct {v3}, Lbuo;-><init>()V

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lbuo;[B[B)V

    .line 4
    new-instance v0, Lbdo;

    invoke-direct {v0, p1}, Lbdo;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v1, Ldsg;->a:Ldsg;

    iput-object v1, p0, Lbdh;->g:Ldsg;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lbdh;->j:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lbdh;->d:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbdh;->e:Ljava/lang/String;

    iput-object p2, p0, Lbdh;->f:Ljava/lang/String;

    iput-object v6, p0, Lbdh;->k:Lbes;

    sget-object p1, Ldsg;->a:Ldsg;

    iput-object p1, p0, Lbdh;->g:Ldsg;

    iput-object v0, p0, Lbdh;->h:Lbdf;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Lcqq;->a()Lcqq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcqq;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([B)Lbde;
    .locals 1

    new-instance v0, Lbde;

    .line 10
    invoke-direct {v0, p0, p1}, Lbde;-><init>(Lbdh;[B)V

    return-object v0
.end method
