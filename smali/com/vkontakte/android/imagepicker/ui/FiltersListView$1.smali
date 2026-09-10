.class Lcom/vkontakte/android/imagepicker/ui/FiltersListView$1;
.super Ljava/lang/Object;
.source "FiltersListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/FiltersListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setVisibility(I)V

    .line 196
    return-void
.end method
