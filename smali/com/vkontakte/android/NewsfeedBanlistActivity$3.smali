.class Lcom/vkontakte/android/NewsfeedBanlistActivity$3;
.super Ljava/lang/Object;
.source "NewsfeedBanlistActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedBanlistActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedBanlistActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedBanlistActivity$3;->this$0:Lcom/vkontakte/android/NewsfeedBanlistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity;->access$300(Lcom/vkontakte/android/NewsfeedBanlistActivity;)Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedBanlistActivity$BanListAdapter;->notifyDataSetInvalidated()V

    .line 178
    return-void
.end method
