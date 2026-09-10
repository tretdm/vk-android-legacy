.class Lcom/vkontakte/android/BoardCreateTopicActivity$3;
.super Ljava/lang/Object;
.source "BoardCreateTopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardCreateTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$3;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$3;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/BoardCreateTopicActivity;->setResult(I)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$3;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->finish()V

    .line 64
    return-void
.end method
