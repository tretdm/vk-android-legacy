.class Lcom/vkontakte/android/ExtendedTabBar$1;
.super Ljava/lang/Object;
.source "ExtendedTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ExtendedTabBar;

.field private final synthetic val$badge:Ljava/lang/String;

.field private final synthetic val$tab:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ExtendedTabBar;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iput p2, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->val$tab:I

    iput-object p3, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->val$badge:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->this$0:Lcom/vkontakte/android/ExtendedTabBar;

    iget v1, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->val$tab:I

    iget-object v2, p0, Lcom/vkontakte/android/ExtendedTabBar$1;->val$badge:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ExtendedTabBar;->setTabBadge(ILjava/lang/String;)V

    .line 134
    return-void
.end method
