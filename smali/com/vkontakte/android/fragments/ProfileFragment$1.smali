.class Lcom/vkontakte/android/fragments/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "act":Ljava/lang/String;
    const-string v6, "relation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v6, "ProfileFragment"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 204
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v6, "bdate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d021d

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameGen:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 133
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v8

    iget v8, v8, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v12, v12}, Ljava/util/Calendar;->add(II)V

    .line 135
    :cond_2
    const-string v6, "beginTime"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v6, "allDay"

    invoke-virtual {v3, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v6, "rrule"

    const-string v7, "FREQ=YEARLY"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v0, :cond_4

    const-string v6, "relative"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "id"

    const-string v7, "relative"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v6, "ProfileFragment"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 144
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const-string v6, "twitter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://twitter.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    const-string v6, "facebook"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 147
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://facebook.com/profile.php?id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    :cond_6
    const-string v6, "livejournal"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 149
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".livejournal.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    const-string v6, "instagram"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://instagram.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 152
    :cond_8
    const-string v6, "skype"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 154
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?call"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v5

    .line 156
    .local v5, "x":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d02fe

    invoke-static {v6, v7, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 158
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_9
    const-string v6, "homePhone"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 159
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 160
    :cond_a
    const-string v6, "mobilePhone"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 161
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 162
    :cond_b
    const-string v6, "website"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 163
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v4, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    .line 164
    .local v4, "site":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "https://"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_c
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 167
    .end local v4    # "site":Ljava/lang/String;
    :cond_d
    const-string v6, "place"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 168
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-wide v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->lon:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 169
    :cond_e
    const-string v6, "time"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 170
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v6, "description"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v6, "beginTime"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    if-lez v6, :cond_f

    .line 176
    const-string v6, "endTime"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    int-to-long v7, v7

    mul-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 177
    :cond_f
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v6, "wiki"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 179
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "oid"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 183
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11
    const-string v6, "status"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 184
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    if-eqz v6, :cond_12

    .line 185
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$200(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    goto/16 :goto_0

    .line 186
    :cond_12
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v6

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_0

    .line 187
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$300(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 189
    :cond_13
    const-string v6, "groups"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 190
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "uid"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0134

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v10

    iget-object v10, v10, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v10, v9, v13

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 193
    const-string v6, "GroupsFragment"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 194
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_14
    const-string v6, "subscriptions"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "uid"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0242

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 198
    const-string v6, "userlist.SubscriptionsUserListFragment"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_15
    const-string v6, "docs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 201
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "oid"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v6, "DocumentsFragment"

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment$1;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
