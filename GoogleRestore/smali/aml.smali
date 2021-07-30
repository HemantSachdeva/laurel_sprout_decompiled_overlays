.class final synthetic Laml;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lamo;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lamo;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laml;->a:Lamo;

    iput-object p2, p0, Laml;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laml;->a:Lamo;

    iget-object v1, p0, Laml;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lamo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
