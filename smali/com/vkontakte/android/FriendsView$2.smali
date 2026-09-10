.class Lcom/vkontakte/android/FriendsView$2;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsView;->init()V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$2;->this$0:Lcom/vkontakte/android/FriendsView;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$2;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$8(Lcom/vkontakte/android/FriendsView;)V

    .line 142
    return-void
.end method
