.class Lcom/vkontakte/android/PhotoViewerActivity$26;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->like(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    .line 803
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 814
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$22(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "likes.add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 816
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$21(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 817
    const/16 v0, 0xe6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe7

    if-ne p1, v0, :cond_1

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$6(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    .line 821
    :cond_1
    return-void

    .line 813
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    goto :goto_1
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$21(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->val$p:I

    aget-object v0, v0, v1

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "likes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 809
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$26;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method
