.class Lcom/vkontakte/android/FriendsView$6;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$6;->this$0:Lcom/vkontakte/android/FriendsView;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$6;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$2(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 391
    return-void
.end method
