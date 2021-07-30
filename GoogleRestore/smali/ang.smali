.class final synthetic Lang;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lann;

.field private final b:Lbpi;


# direct methods
.method public constructor <init>(Lann;Lbpi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lang;->a:Lann;

    iput-object p2, p0, Lang;->b:Lbpi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lang;->a:Lann;

    iget-object v1, p0, Lang;->b:Lbpi;

    invoke-virtual {v0, v1}, Lann;->a(Lbpi;)V

    return-void
.end method
