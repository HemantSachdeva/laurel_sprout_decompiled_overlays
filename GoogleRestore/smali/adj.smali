.class final synthetic Ladj;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lcrm;


# direct methods
.method public constructor <init>(Lcrm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladj;->a:Lcrm;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ladj;->a:Lcrm;

    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
