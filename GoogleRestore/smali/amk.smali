.class final synthetic Lamk;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lamo;


# direct methods
.method public constructor <init>(Lamo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamk;->a:Lamo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lamk;->a:Lamo;

    invoke-static {v0}, Laqp;->a(Landroid/content/Context;)Laqp;

    move-result-object v0

    return-object v0
.end method
