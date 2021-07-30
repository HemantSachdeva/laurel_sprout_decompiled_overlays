.class final Leev;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lehx;


# direct methods
.method public constructor <init>(Lehx;)V
    .locals 0

    iput-object p1, p0, Leev;->a:Lehx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Leap;
    .locals 2

    new-instance v0, Leap;

    iget-object v1, p0, Leev;->a:Lehx;

    .line 1
    invoke-direct {v0, v1}, Leap;-><init>(Lehx;)V

    return-object v0
.end method
