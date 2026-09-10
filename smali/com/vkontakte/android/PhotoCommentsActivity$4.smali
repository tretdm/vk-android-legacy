.class Lcom/vkontakte/android/PhotoCommentsActivity$4;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->loadUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$4;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    .line 134
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 137
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "first_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "last_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "name":Ljava/lang/String;
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "photo_medium_rec"

    :goto_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "photo":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$4;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v3, 0x7f0600da

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$4;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v3, 0x7f0600d9

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    new-instance v3, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$4;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v4, 0x7f0600d9

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ImageLoader;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "photo":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$4;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const v3, 0x7f0600d8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void

    .line 138
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "photo_rec"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
