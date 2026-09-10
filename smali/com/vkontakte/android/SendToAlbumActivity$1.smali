.class Lcom/vkontakte/android/SendToAlbumActivity$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "SendToAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendToAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendToAlbumActivity;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendToAlbumActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendToAlbumActivity$1;)Lcom/vkontakte/android/SendToAlbumActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 49
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 50
    .local v4, "len":I
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 55
    :goto_0
    new-array v2, v4, [Ljava/lang/String;

    .line 56
    .local v2, "atitles":[Ljava/lang/String;
    new-array v1, v4, [I

    .line 58
    .local v1, "aids":[I
    if-eqz v0, :cond_2

    .line 59
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 68
    .end local v3    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    new-instance v7, Lcom/vkontakte/android/SendToAlbumActivity$1$1;

    invoke-direct {v7, p0, v2, v1}, Lcom/vkontakte/android/SendToAlbumActivity$1$1;-><init>(Lcom/vkontakte/android/SendToAlbumActivity$1;[Ljava/lang/String;[I)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/SendToAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "aids":[I
    .end local v2    # "atitles":[Ljava/lang/String;
    .end local v4    # "len":I
    :goto_3
    return-void

    .line 53
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v4    # "len":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    .restart local v1    # "aids":[I
    .restart local v2    # "atitles":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 61
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "aid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v3

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v3    # "i":I
    :cond_2
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900e0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 65
    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 72
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "aids":[I
    .end local v2    # "atitles":[Ljava/lang/String;
    .end local v4    # "len":I
    :catch_0
    move-exception v5

    .line 73
    .local v5, "x":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity$1;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    .line 75
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
