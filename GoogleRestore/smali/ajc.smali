.class final synthetic Lajc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laje;


# direct methods
.method public constructor <init>(Laje;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajc;->a:Laje;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lajc;->a:Laje;

    invoke-interface {v0}, Laje;->k()V

    return-void
.end method
