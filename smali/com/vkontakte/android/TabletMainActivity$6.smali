.class Lcom/vkontakte/android/TabletMainActivity$6;
.super Ljava/lang/Object;
.source "TabletMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/TabletMainActivity;->startActivityInFragment(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/TabletMainActivity;

.field private final synthetic val$_intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/TabletMainActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$6;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    iput-object p2, p0, Lcom/vkontakte/android/TabletMainActivity$6;->val$_intent:Landroid/content/Intent;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$6;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    iget-object v1, p0, Lcom/vkontakte/android/TabletMainActivity$6;->val$_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->startActivityInFragment(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
