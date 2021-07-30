.class public final Lara;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Laqd;


# instance fields
.field public final b:Larf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "D2dRpcs"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lara;->a:Laqd;

    return-void
.end method

.method public constructor <init>(Larf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lara;->b:Larf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Larw;->a()Laqw;

    move-result-object v0

    iget-object v1, p0, Lara;->b:Larf;

    new-instance v2, Laqz;

    .line 3
    invoke-direct {v2, p1, v0}, Laqz;-><init>(Ljava/lang/String;Laqw;)V

    invoke-virtual {v1, v0, v2}, Larf;->a(Laqw;Lard;)V

    .line 4
    invoke-virtual {v0}, Laqw;->a()V

    return-void
.end method
