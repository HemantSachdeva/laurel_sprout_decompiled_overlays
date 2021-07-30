.class public final Lwk;
.super Lac;
.source "PG"


# static fields
.field public static final a:Lae;


# instance fields
.field public final d:Ltp;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwj;

    invoke-direct {v0}, Lwj;-><init>()V

    sput-object v0, Lwk;->a:Lae;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lac;-><init>()V

    new-instance v0, Ltp;

    .line 2
    invoke-direct {v0}, Ltp;-><init>()V

    iput-object v0, p0, Lwk;->d:Ltp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwk;->e:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lwk;->d:Ltp;

    .line 4
    invoke-virtual {v0}, Ltp;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lwk;->d:Ltp;

    .line 5
    invoke-virtual {v3, v2}, Ltp;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwh;

    .line 6
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lwh;->a(Z)Lwq;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwk;->d:Ltp;

    iget v2, v0, Ltp;->d:I

    iget-object v3, v0, Ltp;->c:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    .line 7
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v1, v0, Ltp;->d:I

    iput-boolean v1, v0, Ltp;->a:Z

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwk;->e:Z

    return-void
.end method

.method public final c()Lwh;
    .locals 2

    iget-object v0, p0, Lwk;->d:Ltp;

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltp;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwh;

    return-object v0
.end method
