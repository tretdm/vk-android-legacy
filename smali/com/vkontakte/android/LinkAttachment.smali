.class public Lcom/vkontakte/android/LinkAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "LinkAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/LinkAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/vkontakte/android/LinkAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/LinkAttachment$1;-><init>()V

    .line 21
    sput-object v0, Lcom/vkontakte/android/LinkAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_url"    # Ljava/lang/String;
    .param p2, "_title"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/LinkAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v0, Lcom/vkontakte/android/LinkAttachView;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/LinkAttachView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "lav":Lcom/vkontakte/android/LinkAttachView;
    iget-object v1, p0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/LinkAttachView;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0
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
    .line 58
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/LinkAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
