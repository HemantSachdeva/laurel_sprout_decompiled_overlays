.class final synthetic Lair;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lajb;


# direct methods
.method public constructor <init>(Lajb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lair;->a:Lajb;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lair;->a:Lajb;

    invoke-virtual {v0}, Lba;->r()Lbc;

    move-result-object v0

    invoke-static {v0}, Lbqm;->a(Lbc;)Lai;

    move-result-object v0

    const-class v1, Lagg;

    invoke-virtual {v0, v1}, Lai;->a(Ljava/lang/Class;)Lac;

    move-result-object v0

    check-cast v0, Lagg;

    iget-object v0, v0, Lagg;->g:Ls;

    return-object v0
.end method
