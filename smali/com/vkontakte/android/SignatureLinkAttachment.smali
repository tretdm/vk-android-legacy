.class public Lcom/vkontakte/android/SignatureLinkAttachment;
.super Lcom/vkontakte/android/LinkAttachment;
.source "SignatureLinkAttachment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_url"    # Ljava/lang/String;
    .param p2, "_title"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 21
    if-nez p2, :cond_0

    const-string v1, "signature"

    invoke-static {p1, v1}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->title:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->title:Ljava/lang/String;

    .line 23
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v1, Lcom/vkontakte/android/SignatureLinkAttachment$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SignatureLinkAttachment$1;-><init>(Lcom/vkontakte/android/SignatureLinkAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-object v0

    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 21
    goto :goto_0

    .line 23
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/SignatureLinkAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 38
    return-void
.end method
