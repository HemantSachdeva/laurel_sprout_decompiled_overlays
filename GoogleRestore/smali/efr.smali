.class final Lefr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/util/Collection;

.field c:Ldyv;

.field final synthetic d:Lefs;


# direct methods
.method public constructor <init>(Lefs;)V
    .locals 0

    iput-object p1, p0, Lefr;->d:Lefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefr;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    .line 1
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lefr;->b:Ljava/util/Collection;

    return-void
.end method
