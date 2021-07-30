.class final Lut;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Luu;


# direct methods
.method public constructor <init>(Luu;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lut;->b:Luu;

    iput-object p2, p0, Lut;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lut;->b:Luu;

    iget-object v0, v0, Luu;->c:Luw;

    iget-object v1, p0, Lut;->a:Ljava/lang/Object;

    .line 1
    invoke-interface {v0, v1}, Luw;->a(Ljava/lang/Object;)V

    return-void
.end method
