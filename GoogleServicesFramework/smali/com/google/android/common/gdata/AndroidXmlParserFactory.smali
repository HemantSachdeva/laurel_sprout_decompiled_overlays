.class public Lcom/google/android/common/gdata/AndroidXmlParserFactory;
.super Ljava/lang/Object;
.source "AndroidXmlParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 22
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 30
    new-instance p0, Lcom/google/android/common/SafeXmlSerializer;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/common/SafeXmlSerializer;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object p0
.end method
