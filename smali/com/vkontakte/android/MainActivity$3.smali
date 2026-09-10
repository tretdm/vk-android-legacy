.class Lcom/vkontakte/android/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$3;->this$0:Lcom/vkontakte/android/MainActivity;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$3;->this$0:Lcom/vkontakte/android/MainActivity;

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/MainActivity;->access$0(Lcom/vkontakte/android/MainActivity;I)V

    .line 306
    return-void
.end method
