.class final Loj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lok;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Loj;->a:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Loj;->a:Lok;

    const/4 v1, 0x0

    iput-object v1, v0, Lok;->b:Loj;

    .line 1
    invoke-virtual {v0}, Lok;->drawableStateChanged()V

    return-void
.end method
