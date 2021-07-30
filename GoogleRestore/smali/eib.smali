.class public final Leib;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Leia;


# instance fields
.field public final b:Lehx;

.field public c:J

.field public d:J

.field public final e:Leer;

.field public volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leia;

    sget-object v1, Lehx;->a:Lehx;

    .line 1
    invoke-direct {v0, v1}, Leia;-><init>(Lehx;)V

    sput-object v0, Leib;->a:Leia;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lees;->a()Leer;

    move-result-object v0

    iput-object v0, p0, Leib;->e:Leer;

    .line 4
    sget-object v0, Lehx;->a:Lehx;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lehx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lees;->a()Leer;

    move-result-object v0

    iput-object v0, p0, Leib;->e:Leer;

    iput-object p1, p0, Leib;->b:Lehx;

    return-void
.end method
