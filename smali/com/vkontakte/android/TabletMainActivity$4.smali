.class Lcom/vkontakte/android/TabletMainActivity$4;
.super Ljava/lang/Object;
.source "TabletMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/TabletMainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/TabletMainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/TabletMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$4;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 366
    invoke-static {}, Lcom/vkontakte/android/Global;->sortFriendList()V

    return-void
.end method
