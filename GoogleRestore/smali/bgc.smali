.class final Lbgc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbgf;


# direct methods
.method public constructor <init>(Lbgf;I)V
    .locals 0

    iput-object p1, p0, Lbgc;->b:Lbgf;

    iput p2, p0, Lbgc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbgc;->b:Lbgf;

    iget v1, p0, Lbgc;->a:I

    .line 1
    invoke-virtual {v0, v1}, Lbgf;->b(I)V

    return-void
.end method
