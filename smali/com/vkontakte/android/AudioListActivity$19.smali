.class Lcom/vkontakte/android/AudioListActivity$19;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->loadPlaylists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 772
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 799
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 775
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 776
    .local v0, "a":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/vkontakte/android/AudioListActivity;->access$15(Lcom/vkontakte/android/AudioListActivity;[Ljava/lang/String;)V

    .line 777
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    invoke-static {v3, v4}, Lcom/vkontakte/android/AudioListActivity;->access$16(Lcom/vkontakte/android/AudioListActivity;[I)V

    .line 778
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 779
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$4(Lcom/vkontakte/android/AudioListActivity;)[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 780
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 781
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$4(Lcom/vkontakte/android/AudioListActivity;)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 783
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090112

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 784
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$4(Lcom/vkontakte/android/AudioListActivity;)[I

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x2

    aput v5, v3, v4

    .line 786
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 796
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 787
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 788
    .local v2, "o":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 789
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$19;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity;->access$4(Lcom/vkontakte/android/AudioListActivity;)[I

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    const-string v5, "album_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
