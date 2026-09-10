.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$2;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$2;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method
