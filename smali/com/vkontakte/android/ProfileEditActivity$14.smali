.class Lcom/vkontakte/android/ProfileEditActivity$14;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountGetProfileInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$20(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$9(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$9(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity;->access$10(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 380
    return-void
.end method

.method public success(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 286
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$20(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 287
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8, p1}, Lcom/vkontakte/android/ProfileEditActivity;->access$21(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)V

    .line 289
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090160

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "first_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090161

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "last_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v9, "gender"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$7(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 292
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090162

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$14(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/view/View;->setSelected(Z)V

    .line 293
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090164

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$14(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setSelected(Z)V

    .line 294
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$8(Lcom/vkontakte/android/ProfileEditActivity;)V

    .line 295
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v9, "bday"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$22(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 296
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v9, "bmonth"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$23(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 297
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v9, "byear"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$24(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 299
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$25(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$25(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_5

    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$26(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$26(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    const/16 v9, 0xd

    if-ge v8, v9, :cond_5

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$25(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v9}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileEditActivity;->access$26(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "date":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$27(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$27(Lcom/vkontakte/android/ProfileEditActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090165

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .end local v2    # "date":Ljava/lang/String;
    :goto_2
    const-string v8, "bdate_vis"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 318
    :goto_3
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$16(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    const-string v9, "relation"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v10}, Lcom/vkontakte/android/ProfileEditActivity;->access$29(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 319
    const-string v8, "relation_partner"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 320
    const-string v8, "relation_partner"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 321
    .local v7, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8, v7}, Lcom/vkontakte/android/ProfileEditActivity;->access$13(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/UserProfile;)V

    .line 329
    .end local v7    # "u":Lcom/vkontakte/android/UserProfile;
    :goto_4
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$1(Lcom/vkontakte/android/ProfileEditActivity;Z)V

    .line 330
    const-string v8, "country_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "countryID":I
    const/4 v3, 0x0

    .line 332
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$3(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    if-lt v4, v8, :cond_9

    .line 339
    :goto_6
    if-nez v3, :cond_1

    .line 340
    new-instance v0, Lcom/vkontakte/android/data/database/Country;

    invoke-direct {v0}, Lcom/vkontakte/android/data/database/Country;-><init>()V

    .line 341
    .local v0, "c":Lcom/vkontakte/android/data/database/Country;
    iput v1, v0, Lcom/vkontakte/android/data/database/Country;->id:I

    .line 342
    const-string v8, "country_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/vkontakte/android/data/database/Country;->name:Ljava/lang/String;

    .line 343
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$3(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 344
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$30(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$3(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 347
    .end local v0    # "c":Lcom/vkontakte/android/data/database/Country;
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$4(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v9

    if-lez v1, :cond_b

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    const-string v8, "city_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 350
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$4(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "city_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const-string v9, "city_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$2(Lcom/vkontakte/android/ProfileEditActivity;I)V

    .line 354
    :cond_2
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 355
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 356
    .local v6, "status":I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_d

    .line 357
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090170

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "name_req_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f09016f

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080314

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090171

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .end local v6    # "status":I
    :goto_9
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$31(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 370
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$10(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 371
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/ProfileEditActivity;->invalidateOptionsMenu()V

    .line 372
    return-void

    .line 292
    .end local v1    # "countryID":I
    .end local v3    # "found":Z
    .end local v4    # "i":I
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 293
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 304
    :cond_5
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090165

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f08031f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 309
    :pswitch_0
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$28(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 312
    :pswitch_1
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$28(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 315
    :pswitch_2
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$28(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 323
    :cond_6
    invoke-static {}, Lcom/vkontakte/android/ProfileEditActivity;->access$12()Ljava/util/List;

    move-result-object v8

    const-string v9, "relation"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 324
    .local v5, "show":Z
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090168

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_7

    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090169

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v5, :cond_8

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->access$13(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/UserProfile;)V

    goto/16 :goto_4

    .line 324
    :cond_7
    const/16 v8, 0x8

    goto :goto_a

    .line 325
    :cond_8
    const/16 v8, 0x8

    goto :goto_b

    .line 333
    .end local v5    # "show":Z
    .restart local v1    # "countryID":I
    .restart local v3    # "found":Z
    .restart local v4    # "i":I
    :cond_9
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$3(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/data/database/Country;

    iget v8, v8, Lcom/vkontakte/android/data/database/Country;->id:I

    if-ne v8, v1, :cond_a

    .line 334
    const/4 v3, 0x1

    .line 335
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ProfileEditActivity;->access$30(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 332
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 347
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 359
    .restart local v6    # "status":I
    :cond_c
    const/16 v8, 0x8

    goto/16 :goto_8

    .line 361
    :cond_d
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f09016f

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v10, 0x7f080317

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090171

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f090170

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 366
    .end local v6    # "status":I
    :cond_e
    iget-object v8, p0, Lcom/vkontakte/android/ProfileEditActivity$14;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v9, 0x7f09015f

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
