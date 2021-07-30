.class final synthetic Ldek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ldep;


# direct methods
.method public constructor <init>(Ldep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldek;->a:Ldep;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldek;->a:Ldep;

    invoke-virtual {v0}, Ldep;->c()V

    return-void
.end method
