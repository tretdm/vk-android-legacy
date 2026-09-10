.class Lcom/vkontakte/android/SendToAlbumActivity$4;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "SendToAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendToAlbumActivity;->createAlbumAndSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendToAlbumActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendToAlbumActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendToAlbumActivity$4;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    .line 148
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$4;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 151
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "aid":I
    iget-object v1, p0, Lcom/vkontakte/android/SendToAlbumActivity$4;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    iget-object v2, p0, Lcom/vkontakte/android/SendToAlbumActivity$4;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/SendToAlbumActivity;->doSend(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "aid":I
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method
