.class public abstract Lbha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final b:[Lbdv;

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbha;->b:[Lbdv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbha;->c:Z

    return-void
.end method

.method public constructor <init>([Lbdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbha;->b:[Lbdv;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbha;->c:Z

    return-void
.end method

.method public static a()Lbgz;
    .locals 1

    new-instance v0, Lbgz;

    invoke-direct {v0}, Lbgz;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lbem;Lbpl;)V
.end method
