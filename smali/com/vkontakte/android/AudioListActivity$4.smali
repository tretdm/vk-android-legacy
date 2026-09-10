.class Lcom/vkontakte/android/AudioListActivity$4;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$4;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$4;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$4;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioListActivity;->access$4(Lcom/vkontakte/android/AudioListActivity;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$4;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/AudioListActivity;->access$6(Lcom/vkontakte/android/AudioListActivity;[I[Ljava/lang/String;)V

    .line 149
    return-void
.end method
