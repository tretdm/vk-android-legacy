.class Lcom/vkontakte/android/APIRequest$2$1;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/APIRequest$2;

.field private final synthetic val$o:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest$2;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$2$1;->this$1:Lcom/vkontakte/android/APIRequest$2;

    iput-object p2, p0, Lcom/vkontakte/android/APIRequest$2$1;->val$o:Lorg/json/JSONObject;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$2$1;->this$1:Lcom/vkontakte/android/APIRequest$2;

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest$2;->access$0(Lcom/vkontakte/android/APIRequest$2;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$2$1;->val$o:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/vkontakte/android/APIRequest;->access$2(Lcom/vkontakte/android/APIRequest;Lorg/json/JSONObject;)Z

    .line 210
    return-void
.end method
