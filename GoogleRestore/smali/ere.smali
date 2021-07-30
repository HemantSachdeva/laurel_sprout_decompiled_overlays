.class final Lere;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lerz;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lerz;I)V
    .locals 0

    iput-object p1, p0, Lere;->a:Lerz;

    iput p2, p0, Lere;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lere;->a:Lerz;

    iget v1, p0, Lere;->b:I

    .line 1
    invoke-virtual {v0, v1}, Lerz;->onStatus(I)V

    return-void
.end method
