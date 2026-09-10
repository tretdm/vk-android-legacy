.class Lcom/vkontakte/android/BoardCreateTopicActivity$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$2;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/BoardCreateTopicActivity$2;->this$0:Lcom/vkontakte/android/BoardCreateTopicActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->access$0(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    .line 56
    return-void
.end method
