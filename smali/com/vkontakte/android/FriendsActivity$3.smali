.class Lcom/vkontakte/android/FriendsActivity$3;
.super Ljava/lang/Object;
.source "FriendsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsActivity$3;->this$0:Lcom/vkontakte/android/FriendsActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity$3;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsActivity;->access$2(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPagerIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity$3;->this$0:Lcom/vkontakte/android/FriendsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FriendsActivity;->access$3(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 139
    return-void
.end method
