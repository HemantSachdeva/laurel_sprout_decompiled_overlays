.class final Lcww;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcww;->a:Ljava/lang/String;

    iput p2, p0, Lcww;->b:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcwx;

    iget-object v1, p0, Lcww;->a:Ljava/lang/String;

    iget v2, p0, Lcww;->b:I

    .line 1
    invoke-direct {v0, v1, v2}, Lcwx;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
