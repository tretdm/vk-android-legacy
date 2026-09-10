.class Lcom/vkontakte/android/AudioListActivity$14$1;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity$14;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioListActivity$14;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$14$1;->this$1:Lcom/vkontakte/android/AudioListActivity$14;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$14$1;->this$1:Lcom/vkontakte/android/AudioListActivity$14;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity$14;->access$0(Lcom/vkontakte/android/AudioListActivity$14;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$14$1;->this$1:Lcom/vkontakte/android/AudioListActivity$14;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity$14;->access$0(Lcom/vkontakte/android/AudioListActivity$14;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 454
    return-void
.end method
