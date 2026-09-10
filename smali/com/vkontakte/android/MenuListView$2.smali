.class Lcom/vkontakte/android/MenuListView$2;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView$2;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public onPlayStateChanged(III)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "state"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$2$1;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/MenuListView$2$1;-><init>(Lcom/vkontakte/android/MenuListView$2;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method
