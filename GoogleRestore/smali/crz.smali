.class public final Lcrz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcrm;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public static final b()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1
    const/4 v1, 0x0

    invoke-static {v1}, Lcsy;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
