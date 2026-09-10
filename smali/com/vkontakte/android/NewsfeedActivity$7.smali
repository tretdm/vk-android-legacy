.class Lcom/vkontakte/android/NewsfeedActivity$7;
.super Ljava/lang/Object;
.source "NewsfeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedActivity;->onSearchRequested()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$7;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$7;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$3(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->focusSearchField()V

    .line 340
    return-void
.end method
