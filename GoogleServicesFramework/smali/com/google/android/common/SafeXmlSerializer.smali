.class public Lcom/google/android/common/SafeXmlSerializer;
.super Ljava/lang/Object;
.source "SafeXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private final serializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method static getSafeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v5, 0x9

    if-eq v2, v5, :cond_4

    const/16 v6, 0xd

    if-ne v2, v6, :cond_0

    goto :goto_2

    .line 29
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_1

    .line 34
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p3}, Lcom/google/android/common/SafeXmlSerializer;->getSafeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    return-void
.end method

.method public getDepth()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

    move-result p0

    return p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/google/android/common/SafeXmlSerializer;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1}, Lcom/google/android/common/SafeXmlSerializer;->getSafeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/google/android/common/SafeXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method
