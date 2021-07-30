.class final Leap;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lehx;

.field private final b:Leer;

.field private final c:Leer;

.field private final d:Leer;

.field private volatile e:J


# direct methods
.method public constructor <init>(Lehx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lees;->a()Leer;

    move-result-object v0

    iput-object v0, p0, Leap;->b:Leer;

    .line 2
    invoke-static {}, Lees;->a()Leer;

    move-result-object v0

    iput-object v0, p0, Leap;->c:Leer;

    .line 3
    invoke-static {}, Lees;->a()Leer;

    move-result-object v0

    iput-object v0, p0, Leap;->d:Leer;

    iput-object p1, p0, Leap;->a:Lehx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Leap;->b:Leer;

    .line 6
    invoke-interface {v0}, Leer;->a()V

    iget-object v0, p0, Leap;->a:Lehx;

    .line 7
    invoke-interface {v0}, Lehx;->a()J

    move-result-wide v0

    iput-wide v0, p0, Leap;->e:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Leap;->c:Leer;

    .line 4
    invoke-interface {p1}, Leer;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Leap;->d:Leer;

    .line 5
    invoke-interface {p1}, Leer;->a()V

    return-void
.end method
